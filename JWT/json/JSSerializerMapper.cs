using Newtonsoft.Json;

namespace Jose
{
    public class JSSerializerMapper:IJsonMapper
    {
        public string Serialize(object obj)
        {
            return JsonConvert.SerializeObject(obj);
        }

        public T Parse<T>(string json)
        {
            return JsonConvert.DeserializeObject<T>(json);
        }
    }
}