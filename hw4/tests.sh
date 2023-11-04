# P1
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_0_iter.yaml
# hidden_size, num_layers = (128,3), (256,3), (256,4)

# P2
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/obstacles_1_iter.yaml
# -40.8

# P3
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/obstacles_multi_iter.yaml
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_multi_iter.yaml
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_multi_iter.yaml

# P4
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_act_seq500.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_act_seq2000.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_mpc_horizon1.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_mpc_horizon15.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_ensemble1.yaml
python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/reacher_ablation_ensemble5.yaml

# P5
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_cem.yaml

# P6
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_mbpo.yaml --sac_config_file experiments/sac/halfcheetah_clipq10.yaml
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_mbpo.yaml --sac_config_file experiments/sac/halfcheetah_clipq1.yaml
#python3.8 cs285/scripts/run_hw4.py -cfg experiments/mpc/halfcheetah_mbpo.yaml --sac_config_file experiments/sac/halfcheetah_clipq0.yaml