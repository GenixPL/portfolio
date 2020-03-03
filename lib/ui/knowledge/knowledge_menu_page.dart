import 'package:flutter/material.dart';
import 'package:portfolio/models/article_m.dart';
import 'package:portfolio/services/article_s.dart';
import 'package:portfolio/ui/common/basic_page/basic_page.dart';

class KnowledgeMenuPage extends StatefulWidget {
  @override
  _KnowledgeMenuPageState createState() => _KnowledgeMenuPageState();
}

class _KnowledgeMenuPageState extends State<KnowledgeMenuPage> {
  List<String> _tags = List();

  @override
  Widget build(BuildContext context) {
    List<String> tags = articleS.getAllTags();
    List<ArticleM> articles = articleS.getWithTags(tags);

    return BasicPage(
      children: [
        Row(
          children: <Widget>[
            Text('CHOSEN TAGS: '),
            SizedBox(width: 16),
            DropdownButton(
              hint: Text('ADD NEW TAG'),
              onChanged: (v) {
                if (!_tags.contains(v)) {
                  _tags.add(v);
                  setState(() {});
                }
              },
              items: [
                for (int i = 0; i < tags.length; i++)
                  DropdownMenuItem(
                    child: Text(tags[i]),
                    value: tags[i],
                  ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            for (int i = 0; i < _tags.length; i++) Text(_tags[i] + ' '),
          ],
        ),
        Row(
          children: <Widget>[
            for (int i = 0; i < articles.length; i++)
              Text(articles[i].title + ' '),
          ],
        ),
      ],
    );
  }
}
