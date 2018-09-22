#!/bin/bash

#########################################################################################################################
#																														#
#       Title:                 	setup_prod.sh                                                               			#
#       Purpose:                GCP - Cloud Functions - Setup in PROD 	    				                        	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

docker build -t gcp-cloud-function .
docker run --rm --volumes-from gcloud-prod-cloud-function gcp-cloud-function ./deploy_prod.sh