#!/bin/bash

#########################################################################################################################
#																														#
#       Title:                 	deploy_staging.sh                                                                  		#
#       Purpose:                GCP - Cloud Functions - Deploy in STAGING  					                           	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

gcloud config set project staging
export SOURCE_ROOT=$PWD/../src
echo $SOURCE_ROOT

cd $SOURCE_ROOT
cd gcs-subscribe/schema
./deploy_staging.sh

cd $SOURCE_ROOT
cd gcs-subscribe/sha256
./deploy_staging.sh
