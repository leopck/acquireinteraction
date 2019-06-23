class AcquireMe:
    def __init__(self, objectID, argsParams):
        self.objectID = objectID
        self.argsParams = argsParams

    def samplePrint(self):
        return self.objectID + self.argsParams

    def requestConn(self, reqURL):

        pass

def sampleObject(params):
    return "Object#1" + params

if __name__ == "__main__":
    #First functionality is ability to receive URLs
    #Adding more function
    me = AcquireMe(sampleObject("System"), "ArgumentTesting")
    print(me.samplePrint())