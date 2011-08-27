class Solution
  constructor: (@limit) ->

  multiples: ( ) ->
    multiples = [ ]

    for x in [1...@limit]
      if ( (x % 3 == 0) || (x % 5 == 0) )
        multiples.push x

    return multiples

  sum_the_array: ( list ) ->
    sum = 0
    for x in list
      sum += x

    return sum

  solvefor: () ->
    this.sum_the_array(this.multiples())


describe 'Solution', ->

  describe 'multiples below 10', ->
    beforeEach ->
      @solution = new Solution(10)
    it 'should generate multiples of three and five', ->
      (expect @solution.multiples()).toEqual(
        [3, 5, 6, 9]
      )

    it 'should sum an array', ->
      (expect @solution.sum_the_array(@solution.multiples())).toEqual(23)

  describe 'multiples below 15', ->
    beforeEach ->
      @solution = new Solution(15)
    it 'should generate multiples of three and five', ->
      (expect @solution.multiples()).toEqual(
        [3, 5, 6, 9, 10, 12]
      )
    it 'should sum the array', ->
        (expect @solution.sum_the_array(@solution.multiples())).toEqual(45)

  describe 'multiples below 20', ->
    beforeEach ->
      @solution = new Solution(20)
    it 'should generate multiples of three and five', ->
      (expect @solution.multiples()).toEqual(
        [3, 5, 6, 9, 10, 12, 15, 18]
      )
    it 'should sum the array', ->
      (expect @solution.sum_the_array(@solution.multiples())).toEqual(78)
