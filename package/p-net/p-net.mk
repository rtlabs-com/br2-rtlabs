################################################################################
#
# p-net
#
################################################################################

P_NET_VERSION = 08abd0431c8bd236e9eabe304772bfd0449e49d4
P_NET_SITE = git://github.com/rtlabs-com/p-net.git
P_NET_GIT_SUBMODULES = YES
P_NET_INSTALL_STAGING = YES
P_NET_LICENSE = Dual-licensed under GPLv3 or a commercial license
P_NET_LICENSE_FILES = LICENSE.md
P_NET_SUPPORTS_IN_SOURCE_BUILD = NO
P_NET_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_P_NET_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
