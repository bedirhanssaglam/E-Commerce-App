extension ImagePath on String {
  String get toSvg => "assets/icons/svg_$this.svg";
  String get toPng => "assets/images/ig_$this.png";
  String get toLottie => "assets/lottie/$this.json";
}
