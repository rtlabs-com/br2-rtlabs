################################################################################
#
# osal
#
################################################################################

OSAL_VERSION = 34fe1cc352636d6a9685aa444412cd6704b7bfc7
OSAL_SITE = $(call github,rtlabs-com,osal,$(OSAL_VERSION))
OSAL_INSTALL_STAGING = YES
OSAL_LICENSE = BSD-3-Clause
OSAL_LICENSE_FILES = LICENSE
OSAL_SUPPORTS_IN_SOURCE_BUILD = NO
OSAL_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_OSAL_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
