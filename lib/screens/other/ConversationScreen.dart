import 'package:answer_me/config/SizeConfig.dart';
import 'package:answer_me/providers/ConversationProvider.dart';
import 'package:answer_me/widgets/AppBarLeadingButton.dart';
import 'package:answer_me/widgets/ConversationCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ChatScreen.dart';

class ConversationsScreen extends StatefulWidget {
  @override
  _ConversationsScreenState createState() => _ConversationsScreenState();
}

class _ConversationsScreenState extends State<ConversationsScreen> {
  // ConversationProvider _convProvider;
  @override
  void initState() {
    super.initState();
    // _convProvider = Provider.of<ConversationProvider>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ConversationProvider>(context, listen: false)
          .getConversations(context);
    });
  }

  // _deleteConversation(int conversationId) {
  //   _convProvider.deleteConversation(context, conversationId);
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: Text(
        'Messages',
        style: Theme.of(context).textTheme.headline6,
      ),
      centerTitle: true,
      leading: AppBarLeadingButton(),
    );
  }

  _body() {
    return Consumer<ConversationProvider>(
      builder: (context, convProvider, child) {
        return Center(
          child: convProvider.busy
              ? CircularProgressIndicator()
              : ListView.builder(
                  padding:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
                  itemCount: convProvider.concersations.length,
                  itemBuilder: (context, index) {
                    return
                        // Slidable(
                        //   actionPane: SlidableDrawerActionPane(),
                        //   actionExtentRatio: 0.25,
                        // child:
                        ConversationCard(
                      conversation: convProvider.concersations[index],
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ChatScreen(
                              conversation: convProvider.concersations[index],
                            ),
                          ),
                        );
                      },
                      // ),
                      // secondaryActions: <Widget>[
                      //   IconSlideAction(
                      //     caption: 'Delete',
                      //     color: Theme.of(context).scaffoldBackgroundColor,
                      //     icon: Icons.delete,
                      //     foregroundColor: Theme.of(context).primaryColor,
                      //     onTap: () => _deleteConversation(
                      //       convProvider.concersations[index].id,
                      //     ),
                      //   ),
                      // ],
                    );
                  }),
        );
      },
    );
  }
}
