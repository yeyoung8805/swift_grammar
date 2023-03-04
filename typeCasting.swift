import Foundation

//타입 캐스팅 연산자 : is, as

class MediaItem {
  var name: String
  init(name: String) {
    self.name = name
  }
}

class Movie: MediaItem {
  var director: String
  init(name: String, director: String) {
    self.director = director
    super.init(name: name)
  }
}

class Song: MediaItem {
  var artist: String
  init(name: String, artist: String ){
    self.artist = artist
    super.init(name: name)
  }
}

let library = [
  Movie(name: "기생충", director: "봉준호"),
  Song(name: "Butter", artist: "BTS"),
  Movie(name: "올드보이", director: "박찬욱"),
  Song(name: "Wonderwall", artist: "Oasis"),
  Song(name: "Rain", artist: "태연")
]

var movieCount = 0
var songCount = 0

for item in library {
  if item is Movie {
    movieCount += 1
  }else if item is Song {
    songCount += 1
  }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")
// result : Media library contains 2 movies and 3 songs


//as 연산자
//다운캐스팅
//as? 는 옵셔널 값을 반환하기 때문에, if let 구문으로 값을 꺼내온걸 알 수 있다.
for item in library {
  if let movie = item as? Movie {
    print("Movie: \(movie.name), dir. \(movie.director)")
  }else if let song = item as? Song {
    print("Song: \(song.name), by \(song.artist)")
  }
}
// result : 
// Movie: 기생충, dir. 봉준호
// Song: Butter, by BTS
// Movie: 올드보이, dir. 박찬욱
// Song: Wonderwall, by Oasis
// Song: Rain, by 태연


