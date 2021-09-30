################################################################################
#
# PokePi
#
################################################################################

POKEPI_SITE = git://github.com/bastien8060/PokePi/main
POKEPI_GIT_SUBMODULES = YES

define POKEPI_BUILD_CMDS
    git submodule update --init --recursive
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define POKEPI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/PokePi $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))