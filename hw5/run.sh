#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_easy_random.yaml --dataset_dir datasets/
#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_medium_random.yaml --dataset_dir datasets/
#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_hard_random.yaml --dataset_dir datasets/
#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_easy_rnd.yaml --dataset_dir datasets/
#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_medium_rnd.yaml --dataset_dir datasets/
#python3.8 cs285/scripts/run_hw5_explore.py -cfg experiments/exploration/pointmass_hard_rnd.yaml --dataset_dir datasets/

#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_easy_cql.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_easy_dqn.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_medium_cql.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_medium_dqn.yaml --dataset_dir datasets --log_interval 10

#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_easy_awac.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_medium_awac.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_hard_awac.yaml --dataset_dir datasets --log_interval 10

python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_easy_iql.yaml --dataset_dir datasets --log_interval 10
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_medium_iql.yaml --dataset_dir datasets --log_interval 10 &
#python3.8 ./cs285/scripts/run_hw5_offline.py -cfg experiments/offline/pointmass_hard_iql.yaml --dataset_dir datasets --log_interval 10 &
wait