#!/bin/bash

TAG_NG=v0.1.0.invalid   # invalid versioning format
TAG_RC=v0.1.0-rc.0      # pre-release version
TAG_OK=v0.1.0           # official release version

if [ "x$1" == "xdelete" ]; then
  # Delete tags
  git tag -d ${TAG_NG}
  git push origin :${TAG_NG}

  git tag -d ${TAG_RC}
  git push origin :${TAG_RC}

  git tag -d ${TAG_OK}
  git push origin :${TAG_OK}
  exit
fi

# Create tags
git tag ${TAG_NG}
git push origin ${TAG_NG} -f

git tag ${TAG_RC}
git push origin ${TAG_RC} -f

git tag ${TAG_OK}
git push origin ${TAG_OK} -f
