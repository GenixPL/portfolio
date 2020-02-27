import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/ui/common/text_tile_wrapper/text_tile_wrapper.dart';

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
        _buildRegularText(context, _article.title),
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
      final month = date.month.toString().padLeft(2,'0');
      final year = date.year.toString().padLeft(2, '0');
      text = '$day.$month.$year';
    } else {
      text = 'Unknown';
    }
    
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Start date:'),
        SizedBox(width: 8),
        _buildRegularText(context, text),
      ],
    );
  }

  Widget _buildEndDate(BuildContext context) {
    String text;
    if (_article.endDate != null) {
      final date = _article.endDate;
      final day = date.day.toString().padLeft(2, '0');
      final month = date.month.toString().padLeft(2,'0');
      final year = date.year.toString().padLeft(2, '0');
      text = '$day.$month.$year';
    } else {
      text = 'Unknown';
    }
    
    return Row(
      children: <Widget>[
        _buildHeader(context, 'End date:'),
        SizedBox(width: 8),
        _buildRegularText(context, text),
      ],
    );
  }

  Widget _buildRepoLink(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Repo link:'),
        SizedBox(width: 8),
        (_article.repoLink == null)
            ? _buildRegularText(context, 'Not accessible')
            : _buildRegularText(
                context, _article.repoLink?.toString() ?? 'Unknown'),
      ],
    );
  }

  Widget _buildStoreLink(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildHeader(context, 'Google Play link:'),
        SizedBox(width: 8),
        (_article.storeLink == null)
            ? _buildRegularText(context, 'Not accessible')
            : _buildRegularText(
                context, _article.storeLink?.toString() ?? 'Unknown'),
      ],
    );
  }

  // COMMON

  Widget _buildRegularText(BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        letterSpacing: 1.5,
      ),
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
