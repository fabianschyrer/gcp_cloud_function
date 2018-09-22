#!/bin/bash

#########################################################################################################################
#																														#
#       Title:                 	setup_staging.sh                                                               			#
#       Purpose:                GCP - Cloud Functions - Setup in STAGING     				                        	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

docker build -t acm-dp-cloud-function .
docker run --rm --volumes-from gcloud-staging-cloud-function gcp-cloud-function ./deploy_staging.sh