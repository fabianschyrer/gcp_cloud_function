#!/bin/bash

#########################################################################################################################
#																														#
#       Title:                 	deploy_prod.sh                                                                  		#
#       Purpose:                GCP - Cloud Functions - Deploy in PROD  					                           	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

gcloud config set project prod
export SOURCE_ROOT=$PWD/../src
echo $SOURCE_ROOT

cd $SOURCE_ROOT
cd gcs-subscribe/schema
./deploy_prod.sh

cd $SOURCE_ROOT
cd gcs-subscribe/sha256
./deploy_prod.sh
