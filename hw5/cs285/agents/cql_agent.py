from typing import Sequence, Callable, Tuple, Optional

import torch
from torch import nn

import numpy as np

import cs285.infrastructure.pytorch_util as ptu
from cs285.agents.dqn_agent import DQNAgent


class CQLAgent(DQNAgent):
    def __init__(
        self,
        observation_shape: Sequence[int],
        num_actions: int,
        cql_alpha: float,
        cql_temperature: float = 1.0,
        **kwargs,
    ):
        super().__init__(
            observation_shape=observation_shape, num_actions=num_actions, **kwargs
        )
        self.cql_alpha = cql_alpha
        self.cql_temperature = cql_temperature

    def compute_critic_loss(
        self,
        obs: torch.Tensor,
        action: torch.Tensor,
        reward: torch.Tensor,
        next_obs: torch.Tensor,
        done: bool,
    ) -> Tuple[torch.Tensor, dict, dict]:
        loss, metrics, variables = super().compute_critic_loss(
            obs,
            action,
            reward,
            next_obs,
            done,
        )
        # TODO(student): modify the loss to implement CQL
        # Hint: `variables` includes qa_values and q_values from your CQL implementation
        (batch_size,) = reward.shape
        qa_values = variables['qa_values']
        q_values = variables['q_values']
        log_exp_sum = torch.log(torch.sum(torch.exp(qa_values), axis=1))
        assert log_exp_sum.shape == (batch_size,), log_exp_sum.shape
        loss = loss + torch.mean(self.cql_alpha*(log_exp_sum - q_values))

        q_t_logsumexp = self.cql_temperature * torch.logsumexp(variables["qa_values"]/self.cql_temperature, 1)
        cql_loss = (q_t_logsumexp - variables["q_values"]).mean()

        #print("CQL Loss:",cql_loss)

        loss = loss + self.cql_alpha * cql_loss

        return loss, metrics, variables
