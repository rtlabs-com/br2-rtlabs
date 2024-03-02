################################################################################
#
# m-bus
#
################################################################################

M_BUS_VERSION = c8193517d020fa1e701bbab4ee0220ef6e90445d
M_BUS_SITE = https://github.com/rtlabs-com/m-bus.git
M_BUS_SITE_METHOD = git
M_BUS_GIT_SUBMODULES = YES
M_BUS_INSTALL_STAGING = YES
M_BUS_LICENSE = Dual-licensed under GPLv3 or a commercial license
M_BUS_LICENSE_FILES = LICENSE.md
M_BUS_SUPPORTS_IN_SOURCE_BUILD = NO
M_BUS_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_M_BUS_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
