import 'dart:async';

class Searcher{
  final List<Map> _result= [];
  SearcherState state = SearcherState.ready;
  get displayResult {
    return _result;
  }
  get currentState {
    return state;
  }

  Future<List> lookupWords(val) async {
      state = SearcherState.showResult;
      return [];
  }

  startNew(){
    state = SearcherState.showResult;
  }

  showResult(){
    state = SearcherState.startNew;
  }
}

enum SearcherState{
  ready,
  showResult,
  startNew
}