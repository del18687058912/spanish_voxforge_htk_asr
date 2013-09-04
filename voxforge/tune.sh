# Do a search for good parameters for insertion penalty and 
# LM scale factor.  
#
# The template_eval_nov92 script assumes that recognition has 
# already been done on the Nov92 test set and the results stored 
# in lattice form.  
#
# The file insertion_scale should contain the combinations of
# penalities and scale factors to try.
#
# Output:
#   hvite_nov92_tune.log   The complete HResults output for each combo
#   nov92_tune.log         List of value combos and the resulting accuracy
#
# Parameters:
#  1 - "cross" if we are tuning crossword triphone models

cd $WSJ0_DIR

# This does a search for which insertion and scale factor to use
if [[ $1 != "cross" ]]
then
perl $TRAIN_SCRIPTS/ProcessNums.pl $TRAIN_WSJ0/insertion_scale $TRAIN_WSJ0/template_tune_nov92
else
perl $TRAIN_SCRIPTS/ProcessNums.pl $TRAIN_WSJ0/insertion_scale $TRAIN_WSJ0/template_tune_nov92_cross
fi

