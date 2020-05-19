################################################################################
#
# OpENer
#
################################################################################

OPENER_VERSION = v2.3
OPENER_SITE = $(call github,EIPStackGroup,OpENer,$(OPENER_VERSION))
OPENER_INSTALL_STAGING = YES
OPENER_LICENSE = ADAPTED BSD STYLE LICENSE
OPENER_LICENSE_FILES = license.txt
OPENER_SUPPORTS_IN_SOURCE_BUILD = NO
OPENER_CONF_OPTS += -DOpENer_PLATFORM:STRING="POSIX"
OPENER_SUBDIR = source

$(eval $(cmake-package))
