################################################################################
#
# SOES
#
################################################################################

SOES_VERSION = v3.0.0
SOES_SITE = $(call github,OpenEtherCATsociety,SOES,$(SOES_VERSION))
SOES_INSTALL_STAGING = YES
SOES_LICENSE = Licensed under the GNU General Public License version 2 with exceptions
SOES_LICENSE_FILES = LICENSE
SOES_SUPPORTS_IN_SOURCE_BUILD = NO
SOES_CONF_OPTS = -DBUILD_SHARED_LIBS=OFF

SOES_MODULE_SUBDIRS = drivers/linux/lan9252
SOES_MODULE_MAKE_OPTS = CONFIG_LAN9252=m CFLAGS_lan9252.o=-DDEBUG

$(eval $(kernel-module))
$(eval $(cmake-package))
