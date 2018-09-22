#########################################################################################################################
#																														#
#       Title:                 	deploy_staging.sh                                                              			#
#       Purpose:                GCP - Cloud Functions - Deploy in STAGING     				                        	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################

gcloud beta functions deploy function_inspect_for_schema \
--set-env-vars TARGET_JENKINS='x.x.x.x:5000/jenkins_build/staging' \
--entry-point=function_inspect_for_schema \
--trigger-resource unixdev-datasource-stg \
--trigger-event google.storage.object.finalize

gcloud beta functions deploy function_inspect_for_schema2 \
--set-env-vars TARGET_JENKINS='x.x.x.x:5000/jenkins_build/staging' \
--entry-point=function_inspect_for_schema2 \
--trigger-resource unixdev-datasource-stg \
--trigger-event google.storage.object.finalize
