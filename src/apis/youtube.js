import axios from 'axios';

const KEY = 'AIzaSyDdgBIAngyt0wEGsqcMkTaUyT37CV9OgNo';

export default axios.create({
    baseURL: 'https://www.googleapis.com/youtube/v3',
    params: {
        part: 'snippet',
        maxResults: 5,
        key: KEY
    }
});