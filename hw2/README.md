## Reproducability
To reporduce the results I got run the following commands:
Figure 1 & 2:

```
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 1000 \
--exp_name cartpole -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 1000 \
-rtg --exp_name cartpole_rtg -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 1000 \
-na --exp_name cartpole_na -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 1000 \
-rtg -na --exp_name cartpole_rtg_na -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 4000 \
--exp_name cartpole_lb -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 4000 \
-rtg --exp_name cartpole_lb_rtg -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 4000 \
-na --exp_name cartpole_lb_na -eb 5000
python cs285/scripts/run_hw2.py --env_name CartPole-v0 -n 100 -b 4000 \
-rtg -na --exp_name cartpole_lb_rtg_na -eb 5000
```
Figure 3,4,5,6:
```
python cs285/scripts/run_hw2.py --env_name HalfCheetah-v4 \
-n 100 -b 5000 -rtg --discount 0.95 -lr 0.01 \
--exp_name cheetah -eb 5000
python cs285/scripts/run_hw2.py --env_name HalfCheetah-v4 \
-n 100 -b 5000 -rtg --discount 0.95 -lr 0.01 \
--use_baseline -blr 0.01 -bgs 5 --exp_name cheetah_baseline -eb 5000
python cs285/scripts/run_hw2.py --env_name HalfCheetah-v4 \
-n 100 -b 5000 -rtg --discount 0.95 -lr 0.01 \
--use_baseline -blr 0.01 -bgs 2 --exp_name cheetah_baseline -eb 5000
```
Figure 7:
```
python cs285/scripts/run_hw2.py \
--env_name LunarLander-v2 --ep_len 1000 \
--discount 0.99 -n 300 -l 3 -s 128 -b 2000 -lr 0.001 \
--use_reward_to_go --use_baseline --gae_lambda <\lambda> \
--exp_name lunar_lander_lambda<\lambda> --eb 5000
```
Figure 8:
```
for seed in $(seq 1 5); do
python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 -n 500 \
--exp_name pendulum_default_s$seed \
-rtg --use_baseline -na \
--batch_size 1000 --discount 0.98 \
--seed $seed -eb 5000 -lr 1e-2
done
```
Figure 9:
```
python cs285/scripts/run_hw2.py \
--env_name Humanoid-v4 --ep_len 1000 \
--discount 0.99 -n 1000 -l 3 -s 256 -b 50000 -lr 0.001 \
--baseline_gradient_steps 50 \
-na --use_reward_to_go --use_baseline --gae_lambda 0.97 \
--exp_name humanoid --video_log_freq -1
```
## Setup

See [installation.md](installation.md). It's worth going through this again since some dependencies have changed since homework 1. You also need to make sure to run `pip install -e .` in the hw2 folder.

## Running on Google Cloud
Starting with HW2, we will be providing some infrastructure to run experiments on Google Cloud compute. There are some very important caveats:

- **Do not leave your instance running.** The provided infrastructure tries to prevent this, but it will still be easy to accidentally leave your instance running and burn through all of your credits. You are responsible for making sure you use your credits wisely.
- **Only use this for big hyperparameter sweeps.** Definitely don't use Google Cloud for debugging; only launch a job once you are 100% sure your code works. Even then, single jobs will probably run faster on your local machine (yes, even if you don't have a GPU). The only reason to use Google Cloud is if you want to run multiple jobs in parallel.

For more instructions, see [google_cloud/README.md](google_cloud/README.md).

## Complete the code

There are TODOs in these files:

- `cs285/scripts/run_hw2.py`
- `cs285/agents/pg_agent.py`
- `cs285/networks/policies.py`
- `cs285/networks/critics.py`
- `cs285/infrastructure/utils.py`

See the [Assignment PDF](hw2.pdf) for more info.