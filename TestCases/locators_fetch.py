import json
import jsonpath

def read_locator_from_json(locatorname):
    #file handling is used to open in UTF-8 format as it throws error otherwise. Earlier its like only the commented lines i.e with json.loads with json file directly
    f = open("C://Users//sks//PycharmProjects//sampleautomation1//TestCases//element.json")
    #resp = json.loads("element.json")
    resp = json.loads(f.read())
    value = jsonpath.jsonpath(resp,locatorname)
    #return value
    #Giving value[0] as file reading returns inl ist format
    return value[0]

