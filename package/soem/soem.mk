################################################################################
#
# SOEM
#
################################################################################

SOEM_VERSION = v1.4.0
SOEM_SITE = $(call github,OpenEtherCATsociety,SOEM,$(SOEM_VERSION))
SOEM_INSTALL_STAGING = YES
SOEM_LICENSE = Licensed under the GNU General Public License version 2 with exceptions
SOEM_LICENSE_FILES = LICENSE
SOEM_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
