#!/bin/bash

TAG=release-v0.1.0         # official release version
TAG_RC=release-v0.1.0-rc.0 # prerelease version
TAG_NG=release-v0.1.0.0    # invalid versioning format

# Delete tags
git tag -d ${TAG}
git tag -d ${TAG_RC}
git tag -d ${TAG_NG}
git push origin :${TAG}
git push origin :${TAG_RC}
git push origin :${TAG_NG}

# Create tags
git tag ${TAG}
git tag ${TAG_RC}
git tag ${TAG_NG}
git push origin ${TAG} -f
git push origin ${TAG_RC} -f
git push origin ${TAG_NG} -f

