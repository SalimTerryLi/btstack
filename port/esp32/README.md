# BTstack Port for the Espressif ESP-IDF Platform

Status: Basic port incl. all examples. BTstack runs on dedicated FreeRTOS thread. Multi threading (calling BTstack functions from a different thread) is not supported.

## Setup

Make sure IDF framework V4.4 or higher is properly installed.

## IDF-Component-Manager Integeration

Refer to: https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-component-manager.html

## Examples

`example-template` folder contains a basic IDF style project base, which can be used directly as a new project root out of the either btstack or IDF tree.

To try to build any of BTstack examples, you need to manually copy the source to `example-template/main/`, which should be a single `c` source file under `btstack/example/`.

Make sure you already activated IDF framework, then simply do:

```sh
idf.py build
```
