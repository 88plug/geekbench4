# Geekbench 4 for Linux inside Docker

Based on **Ubuntu 14.04** as defined on [Geekbench site](https://www.geekbench.com/download/linux/). Geekbench exited prematurely on **Ubuntu 16.04** when using xhyve or VMWare Fusion 8 as a VM.

## Run

```
docker run aarreoskari/geekbench4
```

## Supported parameters

Supports following geekbench4 parameters. Most environment variables accept any value to activate them with the exception of arch.

| Environment variable | Default | Geekbench parameter | Description |
| -------------------- | ------- | ------------------- | --------------------- |
| email |  | --unlock | unlock Geekbench using EMAIL and KEY |
| key |  |  | required if email is present |
| help |  | --help | print this message |
| cpu |  | --cpu | run the CPU benchmark |
| arch | 64bit | --arch ARCH | run benchmarks or tests for ARCH architecture. ARCH can be one of: 32bit, 64bit |
| sysinfo |  | --sysinfo | display system information and exit |
| upload |  | --upload | upload results to the Geekbench Browser |
| no_upload |  | --no-upload | do not upload results to the Geekbench Browser |

## Geekbench 4 Pro

To disable tryout mode you'll need a Geekbench 4 Pro account.

```
docker run \
  -e "email=user@example.com" \
  -e "key=" \
  aarreoskari/geekbench4
```

## Development

Clone the repository and run locally:

```
docker build --tag geekbench4 .
docker run geekbench4
```
