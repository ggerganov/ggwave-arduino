# ggwave-arduino

Tiny data-over-sound library for microcontrollers

### [Main repo: ggwave](https://github.com/ggerganov/ggwave)

Tested microcontrollers:
- [Arduino Nano RP2040 Connect](https://docs.arduino.cc/hardware/nano-rp2040-connect)
- [NodeMCU-32S, ESP32](https://www.waveshare.com/nodemcu-32s.htm)
- [Teensy 4.0 board](https://www.pjrc.com/store/teensy40.html)
- [Arduino Uno Rev3](https://store-usa.arduino.cc/products/arduino-uno-rev3) (Tx only)

The easiest way to send and receive audio data is via the [Waver](https://github.com/ggerganov/ggwave/tree/master/examples/waver) application. It is freely available for Android, iOS and can also run directly in the browser: https://waver.ggerganov.com

<a href="https://apps.apple.com/us/app/waver-data-over-sound/id1543607865?itsct=apps_box&amp;itscg=30200&ign-itsct=apps_box#?platform=iphone" style="display: inline-block; overflow: hidden; border-radius: 13px; width: 250px; height: 83px;"><img height="60px" src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/white/en-US?size=250x83&amp;releaseDate=1607558400&h=8e5fafc57929918f684abc83ff8311ef" alt="Download on the App Store"></a>
<a href='https://play.google.com/store/apps/details?id=com.ggerganov.Waver&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://i.imgur.com/BKDCbKv.png' height="60px"/></a>

The following settings will allow you to test the provided examples without having to modify any of the parameters in the sketches:

<p align="center">
    <table border=0>
<tr>
<td>
    <img width="100%" alt="Talking buttons" src="https://user-images.githubusercontent.com/1991296/178112907-ff360197-2297-4834-8a79-982ac0939ed9.png"></img>
</td>
<td>
    <img width="100%" alt="Talking buttons" src="https://user-images.githubusercontent.com/1991296/178112962-075afa61-b145-4693-8096-9d2fba0cfc27.png"></img>
</td>
<td>
    <img width="100%" alt="Talking buttons" src="https://user-images.githubusercontent.com/1991296/178113012-8e4d52e9-d781-42e0-b525-bb2ab45c607e.png"></img>
</td>
</tr>
</table>
</p>
<p align="center">
  <i>Img. Using the Waver app. Left: settings for fixed-length transmission. Center: Enable DSS option. Right: Transmit messages</i>
</p>

### Short demonstration of ggwave

<a href="https://youtu.be/aj_GLBtU3Vw"><img width="100%" src="https://user-images.githubusercontent.com/1991296/177214041-26456254-d4b5-425b-bc57-48bcfc8f816e.png"></img></a>

### Using with Arduino IDE

Install the `ggwave` library via `Tools` -> `Manage Libraries` and select one of the available examples from `File` -> `Examples` -> `ggwave`:

<img width="1018" alt="image" src="https://user-images.githubusercontent.com/1991296/177872493-2878d4d4-543a-4f74-95db-7fb2d5f074be.png">

See the [examples](examples) folder for sample circuits. Feel free to report any problems or feedback by opening an issue in this repo.

### ggwave-cli

Another way to communicate with the microcontrollers is via the [ggwave-cli](https://github.com/ggerganov/ggwave/tree/master/examples/ggwave-cli) command line tool, available in the main [ggwave](https://github.com/ggerganov/ggwave) repository. For example, run the following command to transmit a 16-byte `fixed-length` message, using Direct Sequence Spread (DSS) with `[MT] Fastest` protocol:

```bash
$ ./bin/ggwave-cli -l16 -s -t11
```

![image](https://user-images.githubusercontent.com/1991296/177856175-d43fc9aa-1a10-4270-80e4-765a361b30d7.png)

When sending and receiving messages, make sure that both the sender and the receiver have the `fixed-length` option enabled and that the number of bytes for `payloadLength` is the same. Also note that microcontrollers currently support only the mono-tone `[MT]` and dual-tone `[DT]` transmission protocols.
