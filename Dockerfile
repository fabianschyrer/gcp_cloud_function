#########################################################################################################################
#																														#
#       Title:                 	Dockerfile                                                                  			#
#       Purpose:                Dockerfile for GCP - Cloud Functions      					                           	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

FROM google/cloud-sdk:212.0.0
WORKDIR /usr/app/deploy

ADD deploy /usr/app/deploy
ADD src  /usr/app/src
RUN gcloud version

## Expected to be build and run on CI environment only
# ADD /opt/service-account/service-account.json .
# RUN gcloud auth activate-service-account --key-file=service-account.json
# RUN gcloud config list