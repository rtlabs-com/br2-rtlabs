################################################################################
#
# c-open
#
################################################################################

C_OPEN_VERSION = 0d67a709c663d3a1f6a2d9be1d2ff6e508ead41f
C_OPEN_SITE = https://github.com/rtlabs-com/c-open.git
C_OPEN_SITE_METHOD = git
C_OPEN_GIT_SUBMODULES = YES
C_OPEN_INSTALL_STAGING = YES
C_OPEN_LICENSE = Dual-licensed under GPLv3 or a commercial license
C_OPEN_LICENSE_FILES = LICENSE.md
C_OPEN_SUPPORTS_IN_SOURCE_BUILD = NO
C_OPEN_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_C_OPEN_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
