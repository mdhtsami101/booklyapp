import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/core/use_cases/use_case.dart';
import 'package:booklyapp/features/home/domain/entities/book_entity.dart';
import 'package:booklyapp/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    // TODO: implement call
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }
}
