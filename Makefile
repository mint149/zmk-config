CONFIG_DIR = config

SRCS = $(shell find $(CONFIG_DIR) -type f)

TARGET = ../zmk/app/build/zephyr/zmk.uf2

.PHONY: build clean

build: $(TARGET)

$(TARGET): $(SRCS)
	cd /home/hatoo/git/zmk/app
	west build -b seeeduino_xiao_ble -- -DSHIELD=hato -DZMK_CONFIG="/home/hatoo/git/zmk-confg/config"
