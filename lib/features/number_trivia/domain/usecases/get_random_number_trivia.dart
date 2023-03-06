import 'package:dartz/dartz.dart';
import 'package:tdd_architecture/core/errors/faliure.dart';
import 'package:tdd_architecture/core/usescases/usecase.dart';
import 'package:tdd_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository _numberTriviaRepository;

  GetRandomNumberTrivia(this._numberTriviaRepository);
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await _numberTriviaRepository.getRandomNumberTrivia();
  }
}
