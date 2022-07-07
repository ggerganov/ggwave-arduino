# ggwave-arduino

Tiny data-over-sound library for microcontrollers

### [Main repo: ggwave](https://github.com/ggerganov/ggwave)

Tested microcontrollers:
- [Arduino Nano RP2040 Connect](https://docs.arduino.cc/hardware/nano-rp2040-connect)
- [NodeMCU-32S, ESP32](https://www.waveshare.com/nodemcu-32s.htm)
- [Arduino Uno Rev3](https://store-usa.arduino.cc/products/arduino-uno-rev3) (Tx only)

The easiest way to send and receive audio data is via the [Waver](https://github.com/ggerganov/ggwave/tree/master/examples/waver) application. It is freely available for Android, iOS and can also run directly in the browser.

https://user-images.githubusercontent.com/1991296/177212762-09182300-2291-4144-affd-0cc5cb6d20ba.mp4

[Watch higher quality on YouTube](https://youtu.be/aj_GLBtU3Vw)

Another way to communicate with the microcontrollers is via the [ggwave-cli](https://github.com/ggerganov/ggwave/tree/master/examples/ggwave-cli) command line tool, available in the main [ggwave](https://github.com/ggerganov/ggwave) repository. For example, run the following command to transmit a 16-byte `fixed-length` message, using Direct Sequence Spread (DSS) with `[MT] Fastest` protocol:

```bash
$ ./bin/ggwave-cli -l16 -s -t11
```

![image](https://user-images.githubusercontent.com/1991296/177856175-d43fc9aa-1a10-4270-80e4-765a361b30d7.png)

When sending and receiving messages, make sure that both the sender and the receiver have the `fixed-length` option enabled and that the number of bytes for `payloadLength` is the same. Also note that microcontrollers currently support only the mono-tone `[MT]` and dual-tone `[DT]` transmission protocols.

See the [examples](examples) folder for more information.
