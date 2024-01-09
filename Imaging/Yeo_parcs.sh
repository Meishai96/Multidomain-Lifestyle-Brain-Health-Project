#!/bin/bash

export SUBJECTS_DIR=$PWD
filename='dir_list.txt'
while read dir 
#for dir in sub-MTL0015
do
	#echo ${dir}
	
	#Code for Yeo 7Network
	mri_surf2surf \
	--srcsubject fsaverage \
	--trgsubject $dir \
	--hemi lh \
	--sval-annot /$SUBJECTS_DIR/fsaverage/label/lh.Schaefer2018_100Parcels_7Networks_order.annot \
	--tval /$SUBJECTS_DIR/$dir/label/lh.Schaefer2018_100Parcels_7Networks_order.annot

	mri_surf2surf \
	--srcsubject fsaverage \
	--trgsubject $dir \
	--hemi rh \
	--sval-annot /$SUBJECTS_DIR/fsaverage/label/rh.Schaefer2018_100Parcels_7Networks_order.annot \
	--tval /$SUBJECTS_DIR/$dir/label/rh.Schaefer2018_100Parcels_7Networks_order.annot
	
	mris_anatomical_stats \
	-f /$SUBJECTS_DIR/$dir/stats/lh.Schaefer2018_100Parcels_7Networks_order.stats \
	-a /$SUBJECTS_DIR/$dir/label/lh.Schaefer2018_100Parcels_7Networks_order.annot \
	-b /$SUBJECTS_DUR/$dir lh

	mris_anatomical_stats \
	-f /$SUBJECTS_DIR/$dir/stats/rh.Schaefer2018_100Parcels_7Networks_order.stats \
	-a /$SUBJECTS_DIR/$dir/label/rh.Schaefer2018_100Parcels_7Networks_order.annot \
	-b /$SUBJECTS_DUR/$dir rh

done < dir_list.txt



