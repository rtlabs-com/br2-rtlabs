################################################################################
#
# c-open
#
################################################################################

C_OPEN_VERSION = 245bcf68af47e2c91d4cb68bb22643acefa287b0
C_OPEN_SITE = $(call github,rtlabs-com,c-open,$(C_OPEN_VERSION))
C_OPEN_INSTALL_STAGING = YES
C_OPEN_LICENSE = Dual-licensed under GPLv3 or a commercial license
C_OPEN_LICENSE_FILES = LICENSE.md
C_OPEN_SUPPORTS_IN_SOURCE_BUILD = NO
C_OPEN_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_C_OPEN_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
