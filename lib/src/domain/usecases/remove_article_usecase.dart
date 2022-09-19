import '../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repositories/articles_repository.dart';

class RemoveArticleUseCase implements UseCase<void, Article> {
  final ArticlesRepository _articlesRepository;

  // ignore: sort_constructors_first
  RemoveArticleUseCase(this._articlesRepository);

  @override
  Future<void> call({Article? params}) {
    return _articlesRepository.removeArticle(params!);
  }
}
