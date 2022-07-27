library ticket;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport_club/widget/widget.dart';

part 'ticket_view.dart';
part 'ticket_model.dart';
part 'ticket_state.dart';

ChangeNotifierProvider<_TicketModel> createTicket() {
  return ChangeNotifierProvider<_TicketModel>(
    create: (_) => _TicketModel(),
    child: const _TicketView(),
  );
}
