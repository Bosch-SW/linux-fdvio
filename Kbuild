ccflags-y := -std=gnu99 -Wno-declaration-after-statement
ccflags-y += -I$(src)/include

ifdef CONFIG_BOSCH_FDVIO_THEIR_DATA_WAIT_TIMEOUT_MSEC 
    ccflags-y += -DFDVIO_THEIR_DATA_WAIT_TIMEOUT_MSEC=$(CONFIG_BOSCH_FDVIO_THEIR_DATA_WAIT_TIMEOUT_MSEC)
endif

ifdef CONFIG_BOSCH_FDVIO_ERROR_SILENCE_TIME_MSEC
    ccflags-y += -DCONFIG_BOSCH_FDVIO_ERROR_SILENCE_TIME_MSEC=$(CONFIG_BOSCH_FDVIO_ERROR_SILENCE_TIME_MSEC)
endif

ccflags-y += -DBOSCH_FDVIO_DRIVER_VERSION=$(CONFIG_BOSCH_FDVIO_DRIVER_VERSION)

obj-$(CONFIG_BOSCH_FDVIO_DRIVER) += src/fdvio.o

