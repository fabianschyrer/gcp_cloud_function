#########################################################################################################################
#																														#
#       Title:                 	deploy_prod.sh                                                              			#
#       Purpose:                GCP - Cloud Functions - Deploy in PROD 	     				                        	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

gcloud beta functions deploy <FUNCTION_NAME> \
--set-env-vars TARGET_JENKINS='https://flask-jenkins-trigger.domain.com' \
--entry-point=<FUNCTION_NAME> \
--trigger-resource prod \
--trigger-event google.storage.object.finalize
