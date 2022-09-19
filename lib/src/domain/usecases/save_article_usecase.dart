import 'package:clean_news_app/src/core/usecases/usecase.dart';

import '../entities/article.dart';
import '../repositories/articles_repository.dart';

class SaveArticleUseCase implements UseCase<void, Article> {
  final ArticlesRepository _articlesRepository;

  // ignore: sort_constructors_first
  SaveArticleUseCase(this._articlesRepository);

  @override
  Future<void> call({Article? params}) {
    return _articlesRepository.saveArticle(params!);
  }
}
