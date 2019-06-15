import 'package:assets_audio_player/assets_audio_player.dart';
class AudioController {
  AssetsAudioPlayer _assetsAudioPlayer = new AssetsAudioPlayer();
  sourceChonO(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "choose_letter.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }
  sourceTraO(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "letter_appear.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }
  sourceWin(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "win_level.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }
  sourceSai(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "wrong_word_long.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }
  sourceByCoin(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "buy_coins.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }
  sourceNewLevel(){
    _assetsAudioPlayer.stop();
    _assetsAudioPlayer.open(AssetsAudio(asset: "new_level.wav",folder: "assets/audios/",));
    _assetsAudioPlayer.play();
  }

}