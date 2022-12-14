import '../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repositories/articles_repository.dart';

class GetSavedArticlesUseCase implements UseCase<List<Article>, void> {
  final ArticlesRepository _articlesRepository;

  // ignore: sort_constructors_first
  GetSavedArticlesUseCase(this._articlesRepository);

  @override
  Future<List<Article>> call({void params}) {
    return _articlesRepository.getSavedArticles();
  }
}