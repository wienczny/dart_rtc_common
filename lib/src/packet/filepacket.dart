part of rtc_common;

class FilePacket extends Packet {
  FilePacket();
  FilePacket.With(this.id, this.fileName, this.fileSize);

  String packetType = PACKET_TYPE_FILE;
  String id = "";
  String fileName = "";
  String fileSize = "0";

  Map toJson() {
    return {
      'packetType': packetType,
      'id': id,
      'fileName': fileName,
      'fileSize': fileSize
    };
  }

  static FilePacket fromMap(Map m) {
    return new FilePacket.With(m['id'], m['fileName'], m['fileSize']);
  }
}


