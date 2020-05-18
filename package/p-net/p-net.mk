################################################################################
#
# p-net
#
################################################################################

P_NET_VERSION = 6b83eb308551acd2469c44964de05770c32c18df
P_NET_SITE = $(call github,rtlabs-com,p-net,$(P_NET_VERSION))
P_NET_INSTALL_STAGING = YES
P_NET_LICENSE = Dual-licensed under GPLv3 or a commercial license
P_NET_LICENSE_FILES = LICENSE.md
P_NET_SUPPORTS_IN_SOURCE_BUILD = NO
P_NET_CONF_OPTS += \
	-DUSE_SCHED_FIFO=$(if $(BR2_PACKAGE_P_NET_USE_SCHED_FIFO),ON,OFF)

$(eval $(cmake-package))
