import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/ui/common/text_tile_wrapper/text_tile_wrapper.dart';

import 'dart:js' as js;

class BasicInfo extends StatelessWidget {
  final ArticleM _article;

  final double _paddingSize = 12;

  BasicInfo(this._article);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildTitle(context),
        SizedBox(height: _paddingSize),
        _buildTags(context),
        SizedBox(height: _paddingSize),
        _buildTechnologyStack(context),
        SizedBox(height: _paddingSize),
        _buildStartDate(context),
        SizedBox(height: _paddingSize),
        _buildEndDate(context),
        SizedBox(height: _paddingSize),
        _buildRepoLink(context),
        SizedBox(height: _paddingSize),
        _buildStoreLink(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Title:'),
        SizedBox(width: 8),
        _buildRegularText(_article.title),
      ],
    );
  }

  Widget _buildTags(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Tags:'),
        SizedBox(width: 8),
        Flexible(
          child: TextTilesWrapper(texts: _article.tags),
        ),
      ],
    );
  }

  Widget _buildTechnologyStack(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Technologies:'),
        SizedBox(width: 8),
        Flexible(
          child: TextTilesWrapper(texts: _article.technologyStack),
        ),
      ],
    );
  }

  Widget _buildStartDate(BuildContext context) {
    String text;
    if (_article.startDate != null) {
      final date = _article.startDate;
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2, '0');
      final year = date.year.toString().padLeft(2, '0');
      text = '$day.$month.$year';
    } else {
      text = 'Unknown';
    }

    return Row(
      children: <Widget>[
        _buildHeader(context, 'Start date:'),
        SizedBox(width: 8),
        _buildRegularText(text),
      ],
    );
  }

  Widget _buildEndDate(BuildContext context) {
    String text;
    if (_article.endDate != null) {
      final date = _article.endDate;
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2, '0');
      final year = date.year.toString().padLeft(2, '0');
      text = '$day.$month.$year';
    } else {
      text = 'Unknown';
    }

    return Row(
      children: <Widget>[
        _buildHeader(context, 'End date:'),
        SizedBox(width: 8),
        _buildRegularText(text),
      ],
    );
  }

  Widget _buildRepoLink(BuildContext context) {
    Widget textWidget;
    if (_article.repoLink == null) {
      textWidget = _buildRegularText('Not accessible');
    } else {
      textWidget = GestureDetector(
        onTap: () => js.context.callMethod('open', [_article.repoLink]),
        child: _buildRegularText(
          _article.repoLink,
          color: Colors.blue,
          maxLines: 1,
        ),
      );
    }

    return Row(
      children: <Widget>[
        _buildHeader(context, 'Repo link:'),
        SizedBox(width: 8),
        Flexible(child: textWidget),
      ],
    );
  }

  Widget _buildStoreLink(BuildContext context) {
    Widget textWidget;
    if (_article.storeLink == null) {
      textWidget = _buildRegularText('Not accessible');
    } else {
      textWidget = GestureDetector(
        onTap: () => js.context.callMethod('open', [_article.storeLink]),
        child: _buildRegularText(
          _article.storeLink,
          color: Colors.blue,
          maxLines: 1,
        ),
      );
    }

    return Row(
      children: <Widget>[
        _buildHeader(context, 'Google Play link:'),
        SizedBox(width: 8),
        Flexible(child: textWidget),
      ],
    );
  }

  // COMMON

  Widget _buildRegularText(
    String text, {
    Color color = Colors.white,
    int maxLines,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        letterSpacing: 1.5,
        color: color,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildHeader(BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 16,
        letterSpacing: 1.5,
      ),
    );
  }
}
