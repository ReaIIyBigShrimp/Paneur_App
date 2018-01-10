Country.create!([
  {Id: 1, Description: "test", FlagId: nil, Name: "Italy"}
])
DBFile.create!([
  {Id: 10, ArchivalCode: "MNL OL XIX-A-90-c box 168", Date: 1015073, Description: "<p>ABC</p>", FileName: nil, LanguageBlob: "Hungarian", Name: "(Institute of Economics of the Hungarian Academy of Sciences?): Relations between the COMECON and the EEC 1963-1977", ReferenceNumber: "00912/NKGT/77, K/0059/78", TypeId: 1},
  {Id: 9, ArchivalCode: "MNL OL XIX-A-39 box 250", Date: 1015073, Description: "<p>ABC</p>", FileName: "DOC 0001 DSC06246.pdf", LanguageBlob: "Hungarian", Name: "No. 10129/1982. decree of the Economic Council: About our economic and commercial policy towards the Common Market (European Economic Community), the possibilities for developing these policies ", ReferenceNumber: "10.129/1982", TypeId: 1}
])
Elite.create!([
  {Id: 6, CountryId: 1, Description: nil, Name: "University of Florence", TypeId: 1}
])
EliteType.create!([
  {Id: 2, Name: "Trade Organisations"},
  {Id: 3, Name: "Central Bank"}, 
  {Id: 4, Name: "Goverment"},
  {Id: 5, Name: "Party"},
  {Id: 1, Name: "Academia"}
])
FileType.create!([
  {Id: 1, Name: "Document"},
  {Id: 2, Name: "Person Photo"},
  {Id: 3, Name: "Country Flag"}
])
Language.create!([
  {Id: 1, Name: "Slovenian"},
  {Id: 2, Name: "Estonian"},
  {Id: 3, Name: "Latvian"},
  {Id: 4, Name: "Russian"},
  {Id: 5, Name: "Lithuanian"},
  {Id: 6, Name: "Swedish"},
  {Id: 7, Name: "Italian"},
  {Id: 8, Name: "Spanish"},
  {Id: 9, Name: "English"},
  {Id: 10, Name: "Finnish"},
  {Id: 11, Name: "Irish"},
  {Id: 12, Name: "Slovak"},
  {Id: 13, Name: "Bulgarian"},
  {Id: 14, Name: "French"},
  {Id: 15, Name: "Maltese"},
  {Id: 16, Name: "Croatian"},
  {Id: 17, Name: "Polish"},
  {Id: 18, Name: "Czech"},
  {Id: 19, Name: "German"},
  {Id: 20, Name: "Portuguese"},
  {Id: 21, Name: "Danish"},
  {Id: 22, Name: "Hungarian"},
  {Id: 23, Name: "Romanian"},
  {Id: 24, Name: "Dutch"},
  {Id: 25, Name: "Greek"}
])
Relations::EliteDocument.create!([
  {EliteId: 6, FileId: 9}
])
Relations::FileLanguage.create!([
  {LanguageId: 22, FileId: 9},
  {LanguageId: 22, FileId: 10}
])
