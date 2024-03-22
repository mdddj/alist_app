part of 'part.dart';


///广播通知
class BroadcastTool {
  static const _messageEvent = "global_message";

  static void fireMessage(String message){
    FBroadcast.systemInstance.broadcast(_messageEvent,value: FBModel.createFrom(message));
  }

  static void listenMessage(ValueChanged<String> messageCallback){
    FBroadcast.systemInstance.register(_messageEvent, FResultCallbackWithTryParse<String>(collect: messageCallback));
  }
}