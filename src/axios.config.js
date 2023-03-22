import axios from 'axios'
import VueAxios from 'vue-axios'

axios.defaults.baseURL = 'https://api.openai.com';
axios.defaults.headers.common['Authorization'] = "Bearer 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";
axios.defaults.headers.post['Content-Type'] = 'application/json';

Vue.use(VueAxios, axios)

