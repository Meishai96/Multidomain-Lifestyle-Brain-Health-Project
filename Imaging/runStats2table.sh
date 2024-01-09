#!/bin/bash


export SUBJECTS_DIR=$PWD
list="`ls -d sub-*`"

aparcstats2table --hemi lh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas thickness --tablefile lh.Schaefer2018_100Parcels_7Networks_order.thickness.table
aparcstats2table --hemi rh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas thickness --tablefile rh.Schaefer2018_100Parcels_7Networks_order.thickness.table
aparcstats2table --hemi lh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas area --tablefile lh.Schaefer2018_100Parcels_7Networks_order.area.table
aparcstats2table --hemi rh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas area --tablefile rh.Schaefer2018_100Parcels_7Networks_order.area.table
aparcstats2table --hemi lh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas volume --tablefile lh.Schaefer2018_100Parcels_7Networks_order.volume.table
aparcstats2table --hemi rh --subjects $list --parc Schaefer2018_100Parcels_7Networks_order --meas volume --tablefile rh.Schaefer2018_100Parcels_7Networks_order.volume.table

