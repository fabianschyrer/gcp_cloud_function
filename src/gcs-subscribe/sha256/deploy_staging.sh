#########################################################################################################################
#																														#
#       Title:                 	deploy_staging.sh                                                              			#
#       Purpose:                GCP - Cloud Functions - Deploy in STAGING     				                        	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

gcloud beta functions deploy <FUNCTION_NAME> \
--set-env-vars TARGET_JENKINS='x.x.x.x:5000/jenkins_build/staging' \
--entry-point=<FUNCTION_NAME> \
--trigger-resource staging \
--trigger-event google.storage.object.finalize
