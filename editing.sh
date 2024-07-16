#!/bin/bash -l
#SBATCH --time=01:00:00
#SBATCH --mem=50G
#SBATCH --cpus-per-task 10
#SBATCH --gres=gpu

conda activate groundvideo

# Run your code here
srun python main.py --config video_configs/rabbit_watermelon.yaml --folder outputs/rabbit_watermelon
srun python main.py --config video_configs/swan.yaml --folder outputs/swan
srun python main.py --config video_configs/bear.yaml --folder outputs/bear
srun python main.py --config video_configs/dog_walking.yaml --folder outputs/dog_walking
srun python main.py --config video_configs/car_turn.yaml --folder outputs/car_turn