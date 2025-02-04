#!/bin/bash

python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode raw --n_fold 3
python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode raw_cat --n_fold 3
python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode append_word --n_fold 3 --append_column Word
python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode append_word_categorised --n_fold 3 --append_column Word
python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode append_filename --n_fold 3 --append_column Arabic_Filename
python -m experiments.readability_assessement_V2 --model_name $1 --model_type $2 --num_train_epochs 4 --run_mode append_filename_categorised --n_fold 3 --append_column Arabic_Filename