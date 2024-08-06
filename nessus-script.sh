#!/bin/bash
curl -k -H "X-ApiKeys: accessKey=$accessKey; secretKey=$secretKey" \
    -X POST -H "Content-Type: application/json" \
    -d '{
           "format": "csv",
           "reportContents": {
               "csvColumns": {
                   "id": true,
                   "cve": true,
                   "cvss": true,
                   "risk": true,
                   "hostname": true,
                   "protocol": true,
                   "port": true,
                   "plugin_name": true,
                   "synopsis": true,
                   "description": true,
                   "solution": true,
                   "see_also": true,
                   "plugin_output": true,
                   "stig_severity": true,
                   "compliance_id": true,
                   "compliance_description": true,
                   "compliance_severity": true,
                   "compliance_result": true,
                   "compliance_see_also": true,
                   "compliance_solution": true,
                   "exploitable_with": true
               }
           }
         }' \
    https://localhost:8834/scans/5/export





    # check the list of folders present
curl -k -H "X-ApiKeys: accessKey= $accessKey; secretKey=$secretKey" https://localhost:8834/folders

# get the list of scans
curl -k -H "X-ApiKeys: accessKey= $accessKey; secretKey=$secretKey" https://localhost:8834/scans