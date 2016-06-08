#!/bin/bash -x

aws s3 sync ../s3-static-site/ s3://schemas.aodn.org.au \
    --exclude=".*" --exclude="*.git/*" --exclude="upload.sh" \
    --acl public-read


# \ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
#  --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers full=emailaddress=user@example.com


