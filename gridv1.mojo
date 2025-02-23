@value
struct Grid(StringableRaising):
    var rows: Int
    var cols: Int
    var data: List[List[Int]]


    def __str__(self) -> String:
        str = String()

        # Iterate through rows 0 through  rows -1
        for row in range(self.rows):
        # Iterate through columns 0 through cols -1
            for col in range(self.cols):
                if self.data[row][col] == 1:
                    str += '*'# If cell is is populated, append  an asterix
                else:
                    str += ' '# If cell is not populated, append  a space 
            if row != self.rows - 1:
                str += '\n'# Add a newline between the rows, but not at the end

        return str
