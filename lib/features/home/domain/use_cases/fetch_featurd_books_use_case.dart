import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/core/use_cases/use_case.dart';
import 'package:booklyapp/features/home/domain/entities/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturdBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturdBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedBooks();
  }
}
